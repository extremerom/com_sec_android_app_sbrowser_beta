.class final Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem$CustomContent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;->CustomContent(LR1/e;La0/m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsb/o;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem$CustomContent$1;->this$0:Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LK1/t;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem$CustomContent$1;->invoke(LK1/t;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(LK1/t;La0/m;I)V
    .locals 6
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    const-string p3, "$this$Row"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem$CustomContent$1;->this$0:Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;->getTitleText()LR1/x;

    move-result-object v0

    sget-object p0, Lx1/k;->b:La0/L0;

    move-object v4, p2

    check-cast v4, La0/q;

    invoke-virtual {v4, p0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0c00c9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-wide p1, 0x100000000L

    int-to-float p0, p0

    invoke-static {p1, p2, p0}, LG5/W2;->b(JF)J

    move-result-wide v1

    const/16 v5, 0xc08

    const v3, 0x3fa66666    # 1.3f

    invoke-static/range {v0 .. v5}, LG5/t2;->a(LR1/x;JFLa0/m;I)V

    return-void
.end method
