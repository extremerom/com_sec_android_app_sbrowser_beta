.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;ZI)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;->c:Z

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;ZLandroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;->c:Z

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->h(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;ZLandroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
