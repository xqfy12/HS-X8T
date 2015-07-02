.class public Lcom/android/internal/widget/multiwaveview/BezierSpline;
.super Ljava/lang/Object;
.source "BezierSpline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetCurveControlPoints(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, knots:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    .local p1, firstControlPointFs:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    .local p2, secondControlPointFs:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "knots"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 28
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 32
    .local v2, n:I
    const/4 v6, 0x1

    if-ge v2, v6, :cond_1

    .line 33
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "At least two knot PointFs required knots"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 35
    :cond_1
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    .line 39
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 40
    .local v0, first:Landroid/graphics/PointF;
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v6

    const/4 v6, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4040

    div-float/2addr v6, v7

    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 41
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v6

    const/4 v6, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4040

    div-float/2addr v6, v7

    iput v6, v0, Landroid/graphics/PointF;->y:F

    .line 42
    const/4 v6, 0x0

    invoke-interface {p1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 44
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 45
    .local v3, object:Landroid/graphics/PointF;
    const/high16 v6, 0x4000

    iget v7, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v6

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v6, v7, v6

    iput v6, v3, Landroid/graphics/PointF;->x:F

    .line 46
    const/high16 v6, 0x4000

    iget v7, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v6

    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float v6, v7, v6

    iput v6, v3, Landroid/graphics/PointF;->y:F

    .line 47
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v0           #first:Landroid/graphics/PointF;
    .end local v3           #object:Landroid/graphics/PointF;
    :cond_2
    return-void

    .line 53
    :cond_3
    invoke-static {p0, v2}, Lcom/android/internal/widget/multiwaveview/BezierSpline;->GetFirstControlPointsForX(Ljava/util/List;I)[D

    move-result-object v4

    .line 54
    .local v4, x:[D
    invoke-static {p0, v2}, Lcom/android/internal/widget/multiwaveview/BezierSpline;->GetFirstControlPointsForY(Ljava/util/List;I)[D

    move-result-object v5

    .line 57
    .local v5, y:[D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 60
    new-instance v6, Landroid/graphics/PointF;

    aget-wide v7, v4, v1

    double-to-float v7, v7

    aget-wide v8, v5, v1

    double-to-float v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p1, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 62
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_4

    .line 63
    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x4000

    add-int/lit8 v6, v1, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v8

    float-to-double v8, v6

    add-int/lit8 v6, v1, 0x1

    aget-wide v10, v4, v6

    sub-double/2addr v8, v10

    double-to-float v8, v8

    const/high16 v9, 0x4000

    add-int/lit8 v6, v1, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v9

    float-to-double v9, v6

    add-int/lit8 v6, v1, 0x1

    aget-wide v11, v5, v6

    sub-double/2addr v9, v11

    double-to-float v6, v9

    invoke-direct {v7, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_4
    new-instance v7, Landroid/graphics/PointF;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-double v8, v6

    add-int/lit8 v6, v2, -0x1

    aget-wide v10, v4, v6

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    double-to-float v8, v8

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-double v9, v6

    add-int/lit8 v6, v2, -0x1

    aget-wide v11, v5, v6

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    div-double/2addr v9, v11

    double-to-float v6, v9

    invoke-direct {v7, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static GetFirstControlPoints([D)[D
    .locals 13
    .parameter "rhs"

    .prologue
    const/4 v8, 0x0

    .line 81
    array-length v3, p0

    .line 82
    .local v3, n:I
    new-array v5, v3, [D

    .line 83
    .local v5, x:[D
    new-array v4, v3, [D

    .line 85
    .local v4, tmp:[D
    const-wide/high16 v0, 0x4000

    .line 86
    .local v0, b:D
    aget-wide v6, p0, v8

    div-double/2addr v6, v0

    aput-wide v6, v5, v8

    .line 87
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 89
    const-wide/high16 v6, 0x3ff0

    div-double/2addr v6, v0

    aput-wide v6, v4, v2

    .line 90
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_0

    const-wide/high16 v6, 0x4010

    :goto_1
    aget-wide v8, v4, v2

    sub-double v0, v6, v8

    .line 91
    aget-wide v6, p0, v2

    add-int/lit8 v8, v2, -0x1

    aget-wide v8, v5, v8

    sub-double/2addr v6, v8

    div-double/2addr v6, v0

    aput-wide v6, v5, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_0
    const-wide/high16 v6, 0x400c

    goto :goto_1

    .line 93
    :cond_1
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v3, :cond_2

    .line 94
    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    aget-wide v7, v5, v6

    sub-int v9, v3, v2

    aget-wide v9, v4, v9

    sub-int v11, v3, v2

    aget-wide v11, v5, v11

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v5, v6

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 96
    :cond_2
    return-object v5
.end method

.method private static GetFirstControlPointsForX(Ljava/util/List;I)[D
    .locals 9
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;I)[D"
        }
    .end annotation

    .prologue
    .local p0, knots:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    const/high16 v5, 0x4000

    .line 103
    new-array v1, p1, [D

    .line 106
    .local v1, rhs:[D
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v0, v3, :cond_0

    .line 107
    const/high16 v4, 0x4080

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v3

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    aput-wide v3, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    aput-wide v3, v1, v6

    .line 110
    add-int/lit8 v4, p1, -0x1

    const/high16 v5, 0x4100

    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    float-to-double v5, v3

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    aput-wide v5, v1, v4

    .line 113
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/BezierSpline;->GetFirstControlPoints([D)[D

    move-result-object v2

    .line 115
    .local v2, x:[D
    return-object v2
.end method

.method private static GetFirstControlPointsForY(Ljava/util/List;I)[D
    .locals 9
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;I)[D"
        }
    .end annotation

    .prologue
    .local p0, knots:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    const/high16 v5, 0x4000

    .line 120
    new-array v1, p1, [D

    .line 123
    .local v1, rhs:[D
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v0, v3, :cond_0

    .line 124
    const/high16 v4, 0x4080

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v3

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    aput-wide v3, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    aput-wide v3, v1, v6

    .line 126
    add-int/lit8 v4, p1, -0x1

    const/high16 v5, 0x4100

    add-int/lit8 v3, p1, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v5

    float-to-double v5, v3

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    aput-wide v5, v1, v4

    .line 128
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/BezierSpline;->GetFirstControlPoints([D)[D

    move-result-object v2

    .line 130
    .local v2, y:[D
    return-object v2
.end method
