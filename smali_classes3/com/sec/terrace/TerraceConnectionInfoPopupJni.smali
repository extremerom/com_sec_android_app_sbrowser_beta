.class Lcom/sec/terrace/TerraceConnectionInfoPopupJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;


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

.method public static get()Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/TerraceConnectionInfoPopupJni;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceConnectionInfoPopupJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/TerraceConnectionInfoPopup;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MYISPVrK(JLjava/lang/Object;)V

    return-void
.end method

.method public getPermissions(JLcom/sec/terrace/TerraceConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)[Landroid/util/Pair;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M7YuESsk(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Pair;

    return-object p0
.end method

.method public init(Lcom/sec/terrace/TerraceConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MAIuJxnB(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
