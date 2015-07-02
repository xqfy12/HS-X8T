.class Lcom/android/internal/policy/impl/keyguard/BubbleView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/BubbleView;->getMoveAnimation(Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;Lcom/android/internal/policy/impl/keyguard/BubbleView$BubbleValue;JJLcom/android/internal/policy/impl/keyguard/BubblePoolConfig;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/BubbleView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/BubbleView;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/BubbleView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/BubbleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/BubbleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BubbleView;->setVisibility(I)V

    .line 123
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 124
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubbleView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/BubbleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BubbleView;->setVisibility(I)V

    .line 117
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 118
    return-void
.end method
