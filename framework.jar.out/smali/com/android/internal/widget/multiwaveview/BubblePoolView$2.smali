.class Lcom/android/internal/widget/multiwaveview/BubblePoolView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubblePoolView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

.field final synthetic val$bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/BubblePoolView;Lcom/android/internal/widget/multiwaveview/BubbleView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$2;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    iput-object p2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$2;->val$bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$2;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$2;->val$bubble:Lcom/android/internal/widget/multiwaveview/BubbleView;

    #calls: Lcom/android/internal/widget/multiwaveview/BubblePoolView;->removeBubble(Lcom/android/internal/widget/multiwaveview/BubbleView;)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->access$400(Lcom/android/internal/widget/multiwaveview/BubblePoolView;Lcom/android/internal/widget/multiwaveview/BubbleView;)V

    .line 206
    return-void
.end method
