.class Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandlerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;


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

.method public static get()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandlerJni;

    invoke-direct {v0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandlerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSelectionMarkupWithBounds(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MqHFeW2G(JLjava/lang/Object;)V

    return-void
.end method

.method public onMultiSelectionCleared(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MWeMTP6g(JLjava/lang/Object;)V

    return-void
.end method

.method public resetJavascriptInjectedFlag(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MyKEWaKT(JLjava/lang/Object;)V

    return-void
.end method

.method public resetSelectionPerformed(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MzvZhjd4(JLjava/lang/Object;)V

    return-void
.end method

.method public setSelectionOverlapping(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MdKXkE7N(JLjava/lang/Object;Z)V

    return-void
.end method
