.class public final synthetic Lcom/sec/android/app/sbrowser/search_widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

.field public final synthetic c:Lx1/r;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;Lx1/r;II)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->b:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->c:Lx1/r;

    iput p3, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->a:I

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->c:Lx1/r;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->d:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->b:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->c(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;Lx1/r;ILa0/m;I)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->c:Lx1/r;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->d:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/f;->b:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->d(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;Lx1/r;ILa0/m;I)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
