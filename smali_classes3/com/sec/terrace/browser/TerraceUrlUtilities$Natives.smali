.class public interface abstract Lcom/sec/terrace/browser/TerraceUrlUtilities$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/TerraceUrlUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract fixupUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDomainAndRegistry(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract isGoogleSearchUrl(Ljava/lang/String;)Z
.end method

.method public abstract isOriginLocalhostOrFile(Ljava/lang/String;)Z
.end method

.method public abstract isOriginSecure(Ljava/lang/String;)Z
.end method

.method public abstract isSchemeCryptographic(Ljava/lang/String;)Z
.end method

.method public abstract isTopDomain(Ljava/lang/String;)Z
.end method

.method public abstract isUrlWithinScope(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract sameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z
.end method
