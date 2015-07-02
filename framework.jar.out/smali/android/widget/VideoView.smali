.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final KEY_VIDEO_HEIGHT:Ljava/lang/String; = "video-height"

.field private static final KEY_VIDEO_WIDTH:Ljava/lang/String; = "video-width"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSubtitleName:Ljava/lang/String;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mTimedTextTrackIndex:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 66
    const-string v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedTextTrackIndex:Ljava/util/Vector;

    .line 87
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 88
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 91
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 92
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 287
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 427
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 438
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 500
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 514
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 566
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 629
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 115
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const-string v1, "VideoView"

    iput-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/widget/VideoView;->mTimedTextTrackIndex:Ljava/util/Vector;

    .line 87
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 88
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 91
    iput-object v3, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 92
    iput-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 287
    new-instance v1, Landroid/widget/VideoView$1;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 427
    new-instance v1, Landroid/widget/VideoView$2;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 438
    new-instance v1, Landroid/widget/VideoView$3;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 500
    new-instance v1, Landroid/widget/VideoView$4;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 514
    new-instance v1, Landroid/widget/VideoView$5;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 566
    new-instance v1, Landroid/widget/VideoView$6;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 629
    new-instance v1, Landroid/widget/VideoView$7;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 126
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v2, "Will send intent to boost CPU/DDR for multimedia"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.MRVL_DVFS_BOOSTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "DURATION"

    const-string v2, "2000"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "BOOST_REASON"

    const-string v2, "MULTIMEDIA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    const-string v2, "Boost CPU/DDR for 2s"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 137
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/VideoView;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->updateVideoSize(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Landroid/widget/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/widget/VideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Landroid/widget/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$2002(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2102(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/widget/VideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2300(Landroid/widget/VideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/VideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/VideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Landroid/widget/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$502(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$602(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/VideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 420
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 422
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 423
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 425
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 420
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 221
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 222
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 223
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 224
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 225
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 226
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 227
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 228
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 229
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 820
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 13

    .prologue
    .line 305
    iget-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v10, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string/jumbo v3, "pause"

    invoke-virtual {v10, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/VideoView;->release(Z)V

    .line 319
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 320
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-eqz v1, :cond_7

    .line 321
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Landroid/widget/VideoView;->mAudioSession:I

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 325
    :goto_1
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 326
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 327
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 328
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 329
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 330
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 331
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 332
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 333
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 334
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 335
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 336
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 339
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 340
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 342
    const/4 v6, 0x0

    .line 343
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 345
    .local v9, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 346
    iget-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 347
    .local v12, scheme:Ljava/lang/String;
    const/4 v11, 0x0

    .line 348
    .local v11, path:Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string v1, "file"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 349
    :cond_2
    iget-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 370
    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    .line 371
    const/16 v1, 0x2e

    invoke-virtual {v11, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 372
    .local v8, extensin_name_start:I
    if-lez v8, :cond_4

    .line 373
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".srt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    .line 378
    .end local v8           #extensin_name_start:I
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #scheme:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 379
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    const-string v4, "application/x-subrip"

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find subtitle rip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    :cond_5
    if-eqz v9, :cond_6

    .line 386
    :try_start_2
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 387
    const/4 v9, 0x0

    .line 389
    :cond_6
    if-eqz v6, :cond_0

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 323
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_7
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Landroid/widget/VideoView;->mAudioSession:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 394
    :catch_0
    move-exception v7

    .line 395
    .local v7, ex:Ljava/io/IOException;
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 397
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 398
    iget-object v1, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 350
    .end local v7           #ex:Ljava/io/IOException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v11       #path:Ljava/lang/String;
    .restart local v12       #scheme:Ljava/lang/String;
    :cond_8
    :try_start_3
    const-string v1, "content"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    const-string/jumbo v3, "r"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    .line 353
    if-eqz v9, :cond_3

    .line 355
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 356
    const/4 v9, 0x0

    .line 358
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 359
    .local v2, projection:[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 360
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 362
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 364
    :cond_9
    if-eqz v6, :cond_3

    .line 365
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 366
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 382
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v11           #path:Ljava/lang/String;
    .end local v12           #scheme:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 385
    if-eqz v9, :cond_a

    .line 386
    :try_start_4
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 387
    const/4 v9, 0x0

    .line 389
    :cond_a
    if-eqz v6, :cond_0

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 385
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_b

    .line 386
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 387
    const/4 v9, 0x0

    .line 389
    :cond_b
    if-eqz v6, :cond_c

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    const/4 v6, 0x0

    :cond_c
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 400
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v7

    .line 401
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 403
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 404
    iget-object v1, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private readTimedTextTracks()V
    .locals 4

    .prologue
    .line 254
    :try_start_0
    iget-object v2, p0, Landroid/widget/VideoView;->mTimedTextTrackIndex:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 255
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v1

    .line 256
    .local v1, trackInfos:[Landroid/media/MediaPlayer$TrackInfo;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 272
    .end local v1           #trackInfos:[Landroid/media/MediaPlayer$TrackInfo;
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local v1       #trackInfos:[Landroid/media/MediaPlayer$TrackInfo;
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 261
    aget-object v2, v1, v0

    if-nez v2, :cond_3

    .line 260
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_3
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 265
    iget-object v2, p0, Landroid/widget/VideoView;->mTimedTextTrackIndex:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 269
    .end local v0           #i:I
    .end local v1           #trackInfos:[Landroid/media/MediaPlayer$TrackInfo;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    const/4 v1, 0x0

    .line 665
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 667
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 669
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 670
    if-eqz p1, :cond_0

    .line 671
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 674
    :cond_0
    return-void
.end method

.method private selectSubtitleTrack(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Landroid/widget/VideoView;->mTimedTextTrackIndex:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 278
    iget-object v1, p0, Landroid/widget/VideoView;->mTimedTextTrackIndex:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 280
    .local v0, trackIndex:I
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->selectTrack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0           #trackIndex:I
    :cond_0
    :goto_0
    return-void

    .line 283
    :catchall_0
    move-exception v1

    throw v1

    .line 282
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method private updateVideoSize(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 852
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 853
    .local v1, videoWidth:I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 854
    .local v0, videoHeight:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 855
    iput v1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 856
    iput v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 858
    :cond_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 843
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-nez v1, :cond_0

    .line 844
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 845
    .local v0, foo:Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    .line 846
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 848
    .end local v0           #foo:Landroid/media/MediaPlayer;
    :cond_0
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    return v1
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 814
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 816
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 790
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 793
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 781
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 785
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 808
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 206
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 212
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 695
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 702
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 703
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 705
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 706
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 707
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 731
    :cond_1
    :goto_1
    return v1

    .line 695
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 709
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 710
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 713
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 714
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 715
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 716
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 719
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 721
    :cond_6
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 723
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 727
    :cond_7
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 731
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v8, -0x8000

    .line 144
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v6, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v3

    .line 145
    .local v3, width:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v6, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 146
    .local v0, height:I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v6, :cond_0

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 149
    .local v4, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 150
    .local v5, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 151
    .local v1, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 153
    .local v2, heightSpecSize:I
    if-ne v4, v7, :cond_2

    if-ne v1, v7, :cond_2

    .line 155
    move v3, v5

    .line 156
    move v0, v2

    .line 159
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_1

    .line 161
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 200
    .end local v1           #heightSpecMode:I
    .end local v2           #heightSpecSize:I
    .end local v4           #widthSpecMode:I
    .end local v5           #widthSpecSize:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 201
    return-void

    .line 162
    .restart local v1       #heightSpecMode:I
    .restart local v2       #heightSpecSize:I
    .restart local v4       #widthSpecMode:I
    .restart local v5       #widthSpecSize:I
    :cond_1
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_0

    .line 164
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0

    .line 166
    :cond_2
    if-ne v4, v7, :cond_3

    .line 168
    move v3, v5

    .line 169
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    .line 170
    if-ne v1, v8, :cond_0

    if-le v0, v2, :cond_0

    .line 172
    move v0, v2

    goto :goto_0

    .line 174
    :cond_3
    if-ne v1, v7, :cond_4

    .line 176
    move v0, v2

    .line 177
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 178
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 180
    move v3, v5

    goto :goto_0

    .line 184
    :cond_4
    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 185
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 186
    if-ne v1, v8, :cond_5

    if-le v0, v2, :cond_5

    .line 188
    move v0, v2

    .line 189
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 191
    :cond_5
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 193
    move v3, v5

    .line 194
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 875
    const-string/jumbo v0, "video-width"

    iget v1, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    const-string/jumbo v0, "video-height"

    iget v1, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 878
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 678
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 681
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 686
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 689
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 762
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 765
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 768
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 769
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 1
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 216
    invoke-static {p1, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    return v0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstance"

    .prologue
    const/4 v1, 0x0

    .line 864
    if-eqz p1, :cond_0

    .line 865
    const-string/jumbo v0, "video-width"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 866
    const-string/jumbo v0, "video-height"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 869
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 777
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 798
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 800
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 410
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 413
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 414
    invoke-direct {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 415
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 603
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 604
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 616
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 617
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 626
    iput-object p1, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 627
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 592
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 593
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 581
    iput-object p1, p0, Landroid/widget/VideoView;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 582
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 232
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 233
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 237
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mSubtitleName:Ljava/lang/String;

    .line 245
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 247
    invoke-direct {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 248
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 249
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 250
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 744
    invoke-direct {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    invoke-direct {p0}, Landroid/widget/VideoView;->readTimedTextTracks()V

    .line 748
    iget-object v0, p0, Landroid/widget/VideoView;->mTimedTextTrackIndex:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 750
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/widget/VideoView;->mTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 752
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->selectSubtitleTrack(I)V

    .line 754
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 755
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 757
    :cond_1
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 758
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 297
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 299
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 300
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 302
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 773
    return-void
.end method
