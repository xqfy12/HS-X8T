.class public Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
.super Ljava/lang/Object;
.source "NetNodeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;
    }
.end annotation


# instance fields
.field private mCurrentValue:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

.field private mIndex:I

.field private mNotifyChange:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;

.field private mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;ILcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;)V
    .locals 2
    .parameter "v"
    .parameter "index"
    .parameter "notifyChange"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mIndex:I

    .line 26
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mCurrentValue:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    .line 27
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mNotifyChange:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 36
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mIndex:I

    .line 38
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mNotifyChange:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;

    .line 39
    return-void
.end method

.method private setView(Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)V
    .locals 2
    .parameter "nodeValue"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    iget v1, p1, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->x:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setX(F)V

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    iget v1, p1, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->y:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setY(F)V

    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    iget v1, p1, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->scale:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setScaleX(F)V

    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    iget v1, p1, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->scale:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setScaleY(F)V

    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    iget v1, p1, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;->alpha:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mNotifyChange:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mNotifyChange:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;->changeValue(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)V

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mCurrentValue:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    .line 57
    return-void
.end method


# virtual methods
.method public getCurrentValue()Lcom/android/internal/policy/impl/keyguard/NetNodeValue;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mCurrentValue:Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mIndex:I

    return v0
.end method

.method public getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->mView:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    return-object v0
.end method

.method public setNetNodeValue(Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)V
    .locals 0
    .parameter "nodeValue"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->setView(Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)V

    .line 44
    return-void
.end method
