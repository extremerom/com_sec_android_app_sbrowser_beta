.class Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;


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

.method public static get()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegateJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onButtonClicked(JLcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MNEAn5Nb(JLjava/lang/Object;I)V

    return-void
.end method

.method public onCloseButtonClicked(JLcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MH6Z9xD4(JLjava/lang/Object;)V

    return-void
.end method

.method public onLinkClicked(JLcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MDntaMG8(JLjava/lang/Object;)V

    return-void
.end method
