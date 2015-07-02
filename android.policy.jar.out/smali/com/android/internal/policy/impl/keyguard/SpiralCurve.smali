.class public Lcom/android/internal/policy/impl/keyguard/SpiralCurve;
.super Ljava/lang/Object;
.source "SpiralCurve.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeSpiralCurve(FFFFI)Ljava/util/List;
    .locals 5
    .parameter "baseX"
    .parameter "baseY"
    .parameter "r"
    .parameter "n"
    .parameter "dis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFI)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/SpiralCurve;->makeSpiralCurvePoint(FFFFI)[Landroid/graphics/PointF;

    move-result-object v0

    .line 18
    .local v0, basePoints:[Landroid/graphics/PointF;
    :try_start_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/BezierCurve;->GetBezierCurve(Ljava/util/List;F)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 22
    :goto_0
    return-object v2

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeSpiralCurvePoint(FFFFI)[Landroid/graphics/PointF;
    .locals 11
    .parameter "baseX"
    .parameter "baseY"
    .parameter "r"
    .parameter "n"
    .parameter "dis"

    .prologue
    .line 26
    if-lez p4, :cond_1

    const/4 v0, 0x1

    .line 27
    .local v0, add:Z
    :goto_0
    if-eqz v0, :cond_2

    const/4 p4, 0x1

    .line 29
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 32
    .local v1, currentR:F
    :goto_2
    div-float v2, p2, p3

    .line 33
    .local v2, dR:F
    move v5, p0

    .line 34
    .local v5, x:F
    move v6, p1

    .line 37
    .local v6, y:F
    :goto_3
    if-eqz v0, :cond_4

    .line 38
    cmpl-float v7, v1, p2

    if-lez v7, :cond_5

    .line 49
    :cond_0
    if-eqz v0, :cond_6

    .line 50
    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 51
    new-instance v7, Landroid/graphics/PointF;

    const/high16 v8, 0x42c8

    add-float/2addr v8, v5

    sub-float v9, v6, v1

    add-float/2addr v9, v2

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Landroid/graphics/PointF;

    .line 58
    .local v4, ret:[Landroid/graphics/PointF;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ret:[Landroid/graphics/PointF;
    check-cast v4, [Landroid/graphics/PointF;

    .line 60
    .restart local v4       #ret:[Landroid/graphics/PointF;
    return-object v4

    .line 26
    .end local v0           #add:Z
    .end local v1           #currentR:F
    .end local v2           #dR:F
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    .end local v4           #ret:[Landroid/graphics/PointF;
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    .restart local v0       #add:Z
    :cond_2
    const/4 p4, -0x1

    goto :goto_1

    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    :cond_3
    move v1, p2

    .line 31
    goto :goto_2

    .line 40
    .restart local v1       #currentR:F
    .restart local v2       #dR:F
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_4
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-ltz v7, :cond_0

    .line 42
    :cond_5
    new-instance v7, Landroid/graphics/PointF;

    add-float v8, v5, v1

    invoke-direct {v7, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v7, Landroid/graphics/PointF;

    add-float v8, v6, v1

    invoke-direct {v7, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v7, Landroid/graphics/PointF;

    sub-float v8, v5, v1

    invoke-direct {v7, v8, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v7, Landroid/graphics/PointF;

    sub-float v8, v6, v1

    invoke-direct {v7, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    int-to-float v7, p4

    mul-float/2addr v7, v2

    add-float/2addr v1, v7

    goto :goto_3

    .line 53
    :cond_6
    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/PointF;

    add-float v9, p0, p2

    const/high16 v10, 0x42c8

    sub-float v10, p1, v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 54
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method
