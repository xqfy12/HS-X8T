.class Lcom/android/internal/policy/impl/keyguard/PagedView$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$dragViewIndex:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1438
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget v12, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v11, v12}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    #setter for: Lcom/android/internal/policy/impl/keyguard/PagedView;->mDownScrollX:F
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$002(Lcom/android/internal/policy/impl/keyguard/PagedView;F)F

    .line 1442
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPage(I)V

    .line 1447
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-ge v9, v10, :cond_1

    const/4 v6, -0x1

    .line 1448
    .local v6, shiftDelta:I
    :goto_0
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-ge v9, v10, :cond_2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v3, v9, 0x1

    .line 1450
    .local v3, lowerIndex:I
    :goto_1
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-le v9, v10, :cond_3

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v7, v9, -0x1

    .line 1452
    .local v7, upperIndex:I
    :goto_2
    move v2, v3

    .local v2, i:I
    :goto_3
    if-gt v2, v7, :cond_4

    .line 1453
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-virtual {v9, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1457
    .local v8, v:Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-virtual {v10, v2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v5, v9, v10

    .line 1458
    .local v5, oldX:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    add-int v11, v2, v6

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v4, v9, v10

    .line 1462
    .local v4, newX:I
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1463
    .local v0, anim:Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1467
    :cond_0
    sub-int v9, v5, v4

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1468
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0           #anim:Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1469
    .restart local v0       #anim:Landroid/animation/AnimatorSet;
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget v9, v9, Lcom/android/internal/policy/impl/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1470
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    const-string v11, "translationX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    invoke-static {v8, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1472
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1473
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1452
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1447
    .end local v0           #anim:Landroid/animation/AnimatorSet;
    .end local v2           #i:I
    .end local v3           #lowerIndex:I
    .end local v4           #newX:I
    .end local v5           #oldX:I
    .end local v6           #shiftDelta:I
    .end local v7           #upperIndex:I
    .end local v8           #v:Landroid/view/View;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 1448
    .restart local v6       #shiftDelta:I
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    goto :goto_1

    .line 1450
    .restart local v3       #lowerIndex:I
    :cond_3
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    goto :goto_2

    .line 1476
    .restart local v2       #i:I
    .restart local v7       #upperIndex:I
    :cond_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v9, v9, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v1

    .line 1477
    .local v1, appWidgetId:I
    const/4 v9, -0x2

    if-ne v1, v9, :cond_5

    .line 1485
    :goto_4
    return-void

    .line 1480
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, v10, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeView(Landroid/view/View;)V

    .line 1481
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, v10, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onRemoveView(Landroid/view/View;Z)V

    .line 1482
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, v10, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;I)V

    .line 1483
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iget-object v10, v10, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onAddView(Landroid/view/View;I)V

    .line 1484
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    const/4 v10, -0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/PagedView;->mSidePageHoverIndex:I
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$102(Lcom/android/internal/policy/impl/keyguard/PagedView;I)I

    goto :goto_4
.end method
