.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->gone(IJJ)Landroid/animation/AnimatorSet;
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
    .line 1422
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$8;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1425
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$8;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$800(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 1426
    .local v1, v:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 1427
    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setEnabled(Z)V

    goto :goto_0

    .line 1429
    .end local v1           #v:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$8;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$1300(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 1430
    .local v1, v:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 1431
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setEnabled(Z)V

    goto :goto_1

    .line 1434
    .end local v1           #v:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$8;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #calls: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->playSnapAnimation()V
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$1400(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    .line 1439
    return-void
.end method
