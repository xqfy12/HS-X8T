.class Lcom/android/internal/policy/impl/keyguard/FlowView$3;
.super Ljava/lang/Object;
.source "FlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/FlowView;->animate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/FlowView;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->access$200(Lcom/android/internal/policy/impl/keyguard/FlowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FlowView;->mAnim:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->access$200(Lcom/android/internal/policy/impl/keyguard/FlowView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 261
    :cond_0
    return-void
.end method
