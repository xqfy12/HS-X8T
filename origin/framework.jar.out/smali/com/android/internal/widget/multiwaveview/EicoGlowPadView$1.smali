.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$1;
.super Ljava/lang/Object;
.source "EicoGlowPadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$1;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$1;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    .line 169
    return-void
.end method
