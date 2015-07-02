.class Lcom/hmct/fw/power/KeyBacklightService$2;
.super Landroid/os/Handler;
.source "KeyBacklightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hmct/fw/power/KeyBacklightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hmct/fw/power/KeyBacklightService;


# direct methods
.method constructor <init>(Lcom/hmct/fw/power/KeyBacklightService;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/hmct/fw/power/KeyBacklightService$2;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 331
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 333
    :pswitch_0
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService$2;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    #calls: Lcom/hmct/fw/power/KeyBacklightService;->updateWakeLockSummaryLocked()I
    invoke-static {v0}, Lcom/hmct/fw/power/KeyBacklightService;->access$500(Lcom/hmct/fw/power/KeyBacklightService;)I

    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService$2;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    #calls: Lcom/hmct/fw/power/KeyBacklightService;->updateUserActivitySummaryLocked()I
    invoke-static {v0}, Lcom/hmct/fw/power/KeyBacklightService;->access$600(Lcom/hmct/fw/power/KeyBacklightService;)I

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
