.class public interface abstract Landroid/safe/IMobileSafeClient;
.super Ljava/lang/Object;
.source "IMobileSafeClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safe/IMobileSafeClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract obtainDialogMessage(Ljava/lang/String;ILandroid/os/Bundle;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract permissionDeniedNotify(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
