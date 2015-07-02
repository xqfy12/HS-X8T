.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v5, "boot completed"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 371
    :cond_0
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 372
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-string v5, "plugged"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPlugType:I
    invoke-static {v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$402(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;I)I

    .line 374
    const v1, 0x10405cc

    .line 376
    .local v1, id:I
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive - mUsbNotificationId == charging ? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v3

    if-ne v3, v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", mSettingUsbCharging: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingUsbCharging:Z
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " mPlugType = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPlugType:I
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " mConnected = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPlugType:I
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v3

    if-nez v3, :cond_4

    .line 380
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingUsbCharging:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 384
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingUsbCharging:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 385
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 387
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 388
    .local v2, msg:Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->what:I

    .line 389
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 390
    iput v4, v2, Landroid/os/Message;->arg2:I

    .line 391
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onReceive: ACTION_BATTERY_CHANGED -  sendMessageDelayed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 406
    .end local v1           #id:I
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .restart local v1       #id:I
    :cond_3
    move v3, v4

    .line 376
    goto/16 :goto_0

    .line 397
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettingUsbCharging:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v3

    const v4, 0x10405cc

    if-eq v3, v4, :cond_2

    .line 399
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 400
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    goto :goto_1
.end method
