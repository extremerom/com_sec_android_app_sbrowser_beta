.class Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteControllerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;


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

.method public static get()Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteControllerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteControllerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(Lcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;Z)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MKq37FV$(Ljava/lang/Object;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public start(JLcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MZsYX2gU(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public stop(JLcom/sec/terrace/browser/omnibox/TerraceAutocompleteController;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MT0AqAAE(JLjava/lang/Object;)V

    return-void
.end method
