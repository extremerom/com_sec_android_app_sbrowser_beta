.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ltb/u;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

.field public final synthetic c:Landroid/widget/ListPopupWindow;


# direct methods
.method public synthetic constructor <init>(Ltb/u;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ListPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;->a:Ltb/u;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;->c:Landroid/widget/ListPopupWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;->a:Ltb/u;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/u;->c:Landroid/widget/ListPopupWindow;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->e(Ltb/u;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
