.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->attract(FFJ)V
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
    .line 1329
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$7;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11
    .parameter "animation"

    .prologue
    .line 1332
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1333
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$7;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$1000(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1334
    .local v10, size:I
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1335
    .local v9, scaleSet:Landroid/animation/AnimatorSet;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v8, scaleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$7;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$800(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 1338
    .local v1, tmpNode:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$7;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    const v2, 0x3ee66666

    const/high16 v3, 0x3f80

    const-wide/16 v4, 0x15e

    #calls: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeScaleAnimator(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$1200(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Lcom/android/internal/widget/multiwaveview/NetNodeProxy;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1340
    .local v7, ret:Landroid/animation/Animator;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1342
    .end local v1           #tmpNode:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    .end local v7           #ret:Landroid/animation/Animator;
    :cond_0
    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1343
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 1344
    return-void
.end method
