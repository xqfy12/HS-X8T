.class Landroid/net/wifi/WifiStateMachine$SoftApStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3740
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 3743
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$23700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v1

    .line 3744
    .local v1, message:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x20015

    if-ne v2, v3, :cond_1

    .line 3745
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3747
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 3748
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3756
    :goto_0
    return-void

    .line 3750
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20019

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 3751
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v2, v0}, Landroid/net/wifi/WifiStateMachine;->access$23800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 3754
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal transition to SoftApStartingState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/16 v5, 0xe

    const/4 v1, 0x0

    .line 3759
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3810
    :goto_0
    return v1

    .line 3772
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$23900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 3810
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3775
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3776
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 3777
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v0}, Landroid/net/wifi/WifiStateMachine;->access$23800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 3779
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Softap config is null!"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$24000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3780
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20017

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 3784
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    goto :goto_1

    .line 3787
    :sswitch_3
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Hostapd connection established"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$24100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3788
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$5702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3789
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0xd

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3790
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$24200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$24300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3793
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5704(Landroid/net/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_2

    .line 3794
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Failed to setup control channel, connect to hostapd"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$24400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3795
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20016

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 3797
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times to reconnect hostapd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$24500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3798
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I
    invoke-static {v2, v1}, Landroid/net/wifi/WifiStateMachine;->access$5702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3799
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v5}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3800
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$24600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3804
    :sswitch_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v5}, Landroid/net/wifi/WifiStateMachine;->access$4400(Landroid/net/wifi/WifiStateMachine;I)V

    .line 3805
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$24700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3759
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_2
        0x20017 -> :sswitch_5
        0x20018 -> :sswitch_0
        0x2001c -> :sswitch_1
        0x2001d -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20050 -> :sswitch_0
        0x20054 -> :sswitch_0
        0x20055 -> :sswitch_0
        0x2005a -> :sswitch_0
        0x24001 -> :sswitch_3
        0x24002 -> :sswitch_4
    .end sparse-switch
.end method
