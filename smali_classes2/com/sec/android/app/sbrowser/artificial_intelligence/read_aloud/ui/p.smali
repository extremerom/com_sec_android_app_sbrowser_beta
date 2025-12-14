.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;->a:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;->c:Ljava/lang/Object;

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleSummaryAdapter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleSummaryAdapter;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudArticleSummaryAdapter;ILandroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/p;->b:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/TranslationLanguageListAdapter;ILandroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
