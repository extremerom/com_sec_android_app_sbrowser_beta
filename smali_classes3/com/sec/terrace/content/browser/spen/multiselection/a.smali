.class public final synthetic Lcom/sec/terrace/content/browser/spen/multiselection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/a;->a:I

    check-cast p1, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    check-cast p2, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->b(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->a(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController$MultiSelection;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
