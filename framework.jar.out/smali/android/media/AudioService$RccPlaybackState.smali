.class Landroid/media/AudioService$RccPlaybackState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RccPlaybackState"
.end annotation


# instance fields
.field public mPositionMs:J

.field public mSpeed:F

.field public mState:I


# direct methods
.method public constructor <init>(IJF)V
    .locals 0
    .parameter "state"
    .parameter "positionMs"
    .parameter "speed"

    .prologue
    .line 5004
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5005
    iput p1, p0, Landroid/media/AudioService$RccPlaybackState;->mState:I

    .line 5006
    iput-wide p2, p0, Landroid/media/AudioService$RccPlaybackState;->mPositionMs:J

    .line 5007
    iput p4, p0, Landroid/media/AudioService$RccPlaybackState;->mSpeed:F

    .line 5008
    return-void
.end method

.method private stateToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5025
    iget v0, p0, Landroid/media/AudioService$RccPlaybackState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 5047
    const-string v0, "[invalid playstate]"

    :goto_0
    return-object v0

    .line 5027
    :pswitch_0
    const-string v0, "PLAYSTATE_NONE"

    goto :goto_0

    .line 5029
    :pswitch_1
    const-string v0, "PLAYSTATE_STOPPED"

    goto :goto_0

    .line 5031
    :pswitch_2
    const-string v0, "PLAYSTATE_PAUSED"

    goto :goto_0

    .line 5033
    :pswitch_3
    const-string v0, "PLAYSTATE_PLAYING"

    goto :goto_0

    .line 5035
    :pswitch_4
    const-string v0, "PLAYSTATE_FAST_FORWARDING"

    goto :goto_0

    .line 5037
    :pswitch_5
    const-string v0, "PLAYSTATE_REWINDING"

    goto :goto_0

    .line 5039
    :pswitch_6
    const-string v0, "PLAYSTATE_SKIPPING_FORWARDS"

    goto :goto_0

    .line 5041
    :pswitch_7
    const-string v0, "PLAYSTATE_SKIPPING_BACKWARDS"

    goto :goto_0

    .line 5043
    :pswitch_8
    const-string v0, "PLAYSTATE_BUFFERING"

    goto :goto_0

    .line 5045
    :pswitch_9
    const-string v0, "PLAYSTATE_ERROR"

    goto :goto_0

    .line 5025
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 5011
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$RccPlaybackState;->mState:I

    .line 5012
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/AudioService$RccPlaybackState;->mPositionMs:J

    .line 5013
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/media/AudioService$RccPlaybackState;->mSpeed:F

    .line 5014
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 5018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/media/AudioService$RccPlaybackState;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/AudioService$RccPlaybackState;->mPositionMs:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string v0, "PLAYBACK_POSITION_INVALID ,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService$RccPlaybackState;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v2, p0, Landroid/media/AudioService$RccPlaybackState;->mPositionMs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
