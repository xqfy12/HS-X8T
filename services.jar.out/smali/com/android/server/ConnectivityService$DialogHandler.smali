.class Lcom/android/server/ConnectivityService$DialogHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DialogHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 1738
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1739
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1743
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1745
    :pswitch_0
    const-string v0, "ConnectivityService"

    const-string v1, "reveived msg MSG_SHOW_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DialogHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->isAlertShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1747
    const-string v0, "ConnectivityService"

    const-string v1, "showAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DialogHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->showAlertDialog()V

    goto :goto_0

    .line 1743
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
