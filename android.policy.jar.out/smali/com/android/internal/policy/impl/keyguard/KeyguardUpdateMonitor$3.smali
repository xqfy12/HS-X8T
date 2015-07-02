.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 250
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12d

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    const-string v7, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v8, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v8

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 253
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wgb.mTelephonyPlmn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhone:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkName()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 255
    const-string v7, "KeyguardUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wgb.getNetworkName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v8, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v8

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 258
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12f

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 259
    :cond_3
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 260
    const-string v7, "status"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 261
    .local v6, status:I
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 262
    .local v4, plugged:I
    const-string v7, "level"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 263
    .local v2, level:I
    const-string v7, "health"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 264
    .local v1, health:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x12e

    new-instance v9, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {v9, v6, v2, v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 266
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 267
    .end local v1           #health:I
    .end local v2           #level:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #plugged:I
    .end local v6           #status:I
    :cond_4
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 272
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x130

    invoke-static {p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 274
    :cond_5
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 275
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x131

    const-string v10, "android.media.EXTRA_RINGER_MODE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v9, v10, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 277
    :cond_6
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 278
    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, state:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x132

    invoke-virtual {v8, v9, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 280
    .end local v5           #state:Ljava/lang/String;
    :cond_7
    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 282
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x135

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 283
    :cond_8
    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 284
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x137

    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v9, v10, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 286
    :cond_9
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 287
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x139

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
