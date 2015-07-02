.class Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->attract(FFJ)V
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
    .line 1726
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11
    .parameter "animation"

    .prologue
    .line 1729
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1730
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1731
    .local v10, size:I
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1732
    .local v9, scaleSet:Landroid/animation/AnimatorSet;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1733
    .local v8, scaleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1100(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .line 1735
    .local v1, tmpNode:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$8;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    const v2, 0x3ee66666

    const/high16 v3, 0x3f80

    const-wide/16 v4, 0x15e

    #calls: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeScaleAnimator(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1400(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1737
    .local v7, ret:Landroid/animation/Animator;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1739
    .end local v1           #tmpNode:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    .end local v7           #ret:Landroid/animation/Animator;
    :cond_0
    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1740
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 1741
    return-void
.end method
