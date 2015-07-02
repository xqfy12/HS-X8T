.class Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$2;
.super Landroid/os/Handler;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->playAnimation(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$100(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Z)V

    .line 227
    :cond_0
    return-void
.end method
