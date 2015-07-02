.class public Lcom/android/internal/widget/multiwaveview/BezierCurve;
.super Ljava/lang/Object;
.source "BezierCurve.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CaculateDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 5
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 71
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 73
    .local v0, d:F
    return v0
.end method

.method public static GetBezierCurve(Ljava/util/List;F)Ljava/util/List;
    .locals 27
    .parameter
    .parameter "scale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    .local p0, inputCurve:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .local v3, bezierCurve:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    move-object/from16 v10, p0

    .line 15
    .local v10, knots:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v5, firstControlPoints:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v18, secondControlPoints:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    new-instance v20, Landroid/graphics/PointF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/PointF;-><init>()V

    .line 19
    .local v20, tempPoint:Landroid/graphics/PointF;
    const v21, 0x3dcccccd

    cmpg-float v21, p1, v21

    if-gez v21, :cond_0

    .line 21
    new-instance v21, Ljava/lang/Exception;

    const-string/jumbo v22, "scale too small"

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 24
    :cond_0
    move-object/from16 v0, v18

    invoke-static {v10, v5, v0}, Lcom/android/internal/widget/multiwaveview/BezierSpline;->GetCurveControlPoints(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 26
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 28
    .local v11, knotslength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v6, v0, :cond_2

    .line 30
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/PointF;

    .line 31
    .local v16, point1:Landroid/graphics/PointF;
    add-int/lit8 v21, v6, 0x1

    move/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/PointF;

    .line 33
    .local v17, point2:Landroid/graphics/PointF;
    invoke-static/range {v16 .. v17}, Lcom/android/internal/widget/multiwaveview/BezierCurve;->CaculateDistance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    .line 34
    .local v4, d:F
    div-float v21, v4, p1

    move/from16 v0, v21

    float-to-int v7, v0

    .line 35
    .local v7, insidePoints_number:I
    new-instance v20, Landroid/graphics/PointF;

    .end local v20           #tempPoint:Landroid/graphics/PointF;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    .restart local v20       #tempPoint:Landroid/graphics/PointF;
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    const/4 v9, 0x1

    .local v9, j:I
    :goto_1
    if-ge v9, v7, :cond_1

    .line 41
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    .line 42
    .local v8, inside_p:Landroid/graphics/PointF;
    move-object/from16 v12, v16

    .line 43
    .local v12, p0:Landroid/graphics/PointF;
    move-object/from16 v15, v17

    .line 44
    .local v15, p3:Landroid/graphics/PointF;
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    .line 45
    .local v13, p1:Landroid/graphics/PointF;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    .line 47
    .local v14, p2:Landroid/graphics/PointF;
    int-to-float v0, v9

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v19, v21, v22

    .line 49
    .local v19, t:F
    const/high16 v21, 0x3f80

    sub-float v21, v21, v19

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4008

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x4040

    const/high16 v23, 0x3f80

    sub-float v23, v23, v19

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    mul-float v22, v22, v19

    iget v0, v13, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    const/high16 v22, 0x4040

    const/high16 v23, 0x3f80

    sub-float v23, v23, v19

    mul-float v22, v22, v23

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4008

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 52
    const/high16 v21, 0x3f80

    sub-float v21, v21, v19

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x4008

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x4040

    const/high16 v23, 0x3f80

    sub-float v23, v23, v19

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    mul-float v22, v22, v19

    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    const/high16 v22, 0x4040

    const/high16 v23, 0x3f80

    sub-float v23, v23, v19

    mul-float v22, v22, v23

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4008

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->y:F

    .line 56
    new-instance v20, Landroid/graphics/PointF;

    .end local v20           #tempPoint:Landroid/graphics/PointF;
    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Landroid/graphics/PointF;-><init>(FF)V

    .line 57
    .restart local v20       #tempPoint:Landroid/graphics/PointF;
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 28
    .end local v8           #inside_p:Landroid/graphics/PointF;
    .end local v12           #p0:Landroid/graphics/PointF;
    .end local v13           #p1:Landroid/graphics/PointF;
    .end local v14           #p2:Landroid/graphics/PointF;
    .end local v15           #p3:Landroid/graphics/PointF;
    .end local v19           #t:F
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 62
    .end local v4           #d:F
    .end local v7           #insidePoints_number:I
    .end local v9           #j:I
    .end local v16           #point1:Landroid/graphics/PointF;
    .end local v17           #point2:Landroid/graphics/PointF;
    :cond_2
    new-instance v20, Landroid/graphics/PointF;

    .end local v20           #tempPoint:Landroid/graphics/PointF;
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/PointF;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/PointF;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 64
    .restart local v20       #tempPoint:Landroid/graphics/PointF;
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object v3
.end method
