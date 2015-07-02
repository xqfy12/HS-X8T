.class Lcom/android/internal/policy/impl/keyguard/FlowView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/FlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->access$100(Lcom/android/internal/policy/impl/keyguard/FlowView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/FlowView;->access$102(Lcom/android/internal/policy/impl/keyguard/FlowView;I)I

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/keyguard/FlowView;->mDirection:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/FlowView;->access$102(Lcom/android/internal/policy/impl/keyguard/FlowView;I)I

    goto :goto_0
.end method
