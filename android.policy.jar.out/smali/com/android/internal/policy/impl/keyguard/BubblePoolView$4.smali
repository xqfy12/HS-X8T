.class Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;
.super Landroid/content/BroadcastReceiver;
.source "BubblePoolView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/BubblePoolView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 334
    const-string v7, "EicoGlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mBatteryReceiver, onReceive :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    const-string v7, "status"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 340
    .local v6, status:I
    const-string v7, "EicoGlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mBatteryReceiver, status :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v7, 0x2

    if-eq v7, v6, :cond_0

    const/4 v7, 0x5

    if-ne v7, v6, :cond_2

    .line 344
    :cond_0
    const-string v7, "level"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 345
    .local v4, rawLevel:I
    const-string v7, "scale"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 346
    .local v5, scale:I
    if-lez v4, :cond_1

    if-lez v5, :cond_1

    .line 347
    const-string v7, "plugged"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 348
    .local v3, plugged:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    mul-int/lit8 v8, v4, 0x64

    div-int/2addr v8, v5

    #setter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mlevel:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$702(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;I)I

    .line 349
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v1, data:Landroid/os/Bundle;
    const-string v7, "KEY_TEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mlevel:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$700(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v7, "KEY_LEVEL"

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mlevel:I
    invoke-static {v8}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$700(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 352
    const-string v7, "KEY_PLUGGED"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$800(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 354
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 355
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$800(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #plugged:I
    .end local v4           #rawLevel:I
    .end local v5           #scale:I
    .end local v6           #status:I
    :cond_1
    :goto_0
    return-void

    .line 359
    .restart local v6       #status:I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$800(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 360
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$800(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
