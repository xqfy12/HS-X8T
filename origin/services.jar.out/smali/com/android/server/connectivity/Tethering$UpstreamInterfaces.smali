.class Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpstreamInterfaces"
.end annotation


# instance fields
.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mUpstreamV4IfaceName:Ljava/lang/String;

.field private mUpstreamV6IfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/net/LinkProperties;)V
    .locals 1
    .parameter
    .parameter "lp"

    .prologue
    const/4 v0, 0x0

    .line 824
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 820
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV4IfaceName:Ljava/lang/String;

    .line 821
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV6IfaceName:Ljava/lang/String;

    .line 822
    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mLinkProperties:Landroid/net/LinkProperties;

    .line 825
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mLinkProperties:Landroid/net/LinkProperties;

    .line 826
    if-eqz p2, :cond_0

    .line 827
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV4IfaceName:Ljava/lang/String;

    .line 828
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->getUpstreamV6Address()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV6IfaceName:Ljava/lang/String;

    .line 831
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;)Z
    .locals 7
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 868
    if-nez p1, :cond_0

    .line 880
    :goto_0
    return v5

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->getUpstreamV6IfaceName()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, other_v6Iface:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->getUpstreamV4IfaceName()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, other_v4Iface:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV6IfaceName:Ljava/lang/String;

    if-nez v6, :cond_2

    if-nez v1, :cond_1

    move v3, v4

    .line 876
    .local v3, v6equal:Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV4IfaceName:Ljava/lang/String;

    if-nez v6, :cond_4

    if-nez v0, :cond_3

    move v2, v4

    .line 880
    .local v2, v4equal:Z
    :goto_2
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    :goto_3
    move v5, v4

    goto :goto_0

    .end local v2           #v4equal:Z
    .end local v3           #v6equal:Z
    :cond_1
    move v3, v5

    .line 873
    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV6IfaceName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .restart local v3       #v6equal:Z
    :cond_3
    move v2, v5

    .line 876
    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV4IfaceName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    .restart local v2       #v4equal:Z
    :cond_5
    move v4, v5

    .line 880
    goto :goto_3
.end method

.method public getUpstreamV4IfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV4IfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpstreamV6Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 842
    const/4 v3, 0x0

    .line 843
    .local v3, v6address:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v4, :cond_1

    .line 844
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 845
    .local v1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 846
    .local v0, address:Ljava/net/InetAddress;
    instance-of v4, v0, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    .line 847
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 852
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v1           #addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method public getUpstreamV6IfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV6IfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public setUpstreamV4IfaceName(Ljava/lang/String;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV4IfaceName:Ljava/lang/String;

    .line 857
    return-void
.end method

.method public setUpstreamV6IfaceName(Ljava/lang/String;)V
    .locals 0
    .parameter "iface"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV6IfaceName:Ljava/lang/String;

    .line 861
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV4IfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", v6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$UpstreamInterfaces;->mUpstreamV6IfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
