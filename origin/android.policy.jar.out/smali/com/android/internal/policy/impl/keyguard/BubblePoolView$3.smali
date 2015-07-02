.class Lcom/android/internal/policy/impl/keyguard/BubblePoolView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BubblePoolView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->startBubble(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

.field final synthetic val$bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Lcom/android/internal/policy/impl/keyguard/BubbleView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$3;->val$bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$3;->val$bubble:Lcom/android/internal/policy/impl/keyguard/BubbleView;

    #calls: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->removeBubble(Lcom/android/internal/policy/impl/keyguard/BubbleView;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$600(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Lcom/android/internal/policy/impl/keyguard/BubbleView;)V

    .line 240
    return-void
.end method
