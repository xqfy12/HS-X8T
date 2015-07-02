.class Lcom/android/internal/policy/impl/keyguard/FlowView$1;
.super Ljava/lang/Object;
.source "FlowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 158
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/FlowView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/FlowView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/keyguard/FlowView;->curAnimationValue:F
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/FlowView;->access$002(Lcom/android/internal/policy/impl/keyguard/FlowView;F)F

    .line 162
    return-void
.end method
