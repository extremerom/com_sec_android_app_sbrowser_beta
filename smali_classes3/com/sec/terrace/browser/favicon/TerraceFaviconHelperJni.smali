.class public Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M4Cwt7ih(J)V

    return-void
.end method

.method public getLargestRawFaviconForUrl(JLjava/lang/String;ILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MxXunJLc(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public getLocalFaviconImageForURL(JLjava/lang/String;IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MDIf0mE3(JLjava/lang/Object;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public init()J
    .locals 2

    invoke-static {}, LJ/N;->Mpzxne6t()J

    move-result-wide v0

    return-wide v0
.end method

.method public updateDominantColor(JLjava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MAA$gfFs(JLjava/lang/Object;J)V

    return-void
.end method
