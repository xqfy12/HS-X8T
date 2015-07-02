.class Landroid/webkit/CallbackProxy$4;
.super Landroid/content/BroadcastReceiver;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Landroid/webkit/CallbackProxy$4;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 408
    invoke-static {}, Landroid/webkit/CallbackProxy;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_ADJUST_SCREEN_BRIGHTNESS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkit/CallbackProxy;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Landroid/webkit/CallbackProxy$4;->this$0:Landroid/webkit/CallbackProxy;

    invoke-static {}, Landroid/webkit/CallbackProxy;->access$100()I

    move-result v1

    #calls: Landroid/webkit/CallbackProxy;->adjustScreenBrightness(I)V
    invoke-static {v0, v1}, Landroid/webkit/CallbackProxy;->access$200(Landroid/webkit/CallbackProxy;I)V

    .line 411
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/CallbackProxy;->access$002(Z)Z

    .line 413
    :cond_0
    return-void
.end method
