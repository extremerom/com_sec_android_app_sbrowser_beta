.class Lcom/sec/terrace/browser/TerracePasswordUIViewJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;


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

.method public static get()Lcom/sec/terrace/browser/TerracePasswordUIView$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TerracePasswordUIViewJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mho9X4Rg(JLjava/lang/Object;)V

    return-void
.end method

.method public getSavedPasswordEntry(JLcom/sec/terrace/browser/TerracePasswordUIView;I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MdosReMh(JLjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    return-object p0
.end method

.method public getSavedPasswordException(JLcom/sec/terrace/browser/TerracePasswordUIView;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M8VKwzoz(JLjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public handleRemoveSavedPasswordEntry(JLcom/sec/terrace/browser/TerracePasswordUIView;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MrAGgkmf(JLjava/lang/Object;I)V

    return-void
.end method

.method public handleRemoveSavedPasswordException(JLcom/sec/terrace/browser/TerracePasswordUIView;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MED_5L0t(JLjava/lang/Object;I)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/TerracePasswordUIView;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MWmz1Edg(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public removePasswordExceptionForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M4sxUCWD_ForTesting(JLjava/lang/Object;)V

    return-void
.end method

.method public removeSavedPasswordForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mb49fgzB_ForTesting(JLjava/lang/Object;)V

    return-void
.end method

.method public setPasswordExceptionListForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->McufH8sH_ForTesting(JLjava/lang/Object;)V

    return-void
.end method

.method public setPasswordListForTest(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MWOprzaY_ForTesting(JLjava/lang/Object;)V

    return-void
.end method

.method public updatePasswordLists(JLcom/sec/terrace/browser/TerracePasswordUIView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MJUnbAFK(JLjava/lang/Object;)V

    return-void
.end method
