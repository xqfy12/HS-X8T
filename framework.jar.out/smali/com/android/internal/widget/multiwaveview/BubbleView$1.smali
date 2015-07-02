.class Lcom/android/internal/widget/multiwaveview/BubbleView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/BubbleView;->getMoveAnimation(Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;JJLcom/android/internal/widget/multiwaveview/BubblePoolConfig;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/BubbleView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/BubbleView;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubbleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubbleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setVisibility(I)V

    .line 122
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 123
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubbleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/BubbleView;->setVisibility(I)V

    .line 116
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 117
    return-void
.end method
