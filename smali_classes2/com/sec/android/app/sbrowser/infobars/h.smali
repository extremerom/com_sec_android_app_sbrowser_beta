.class public final synthetic Lcom/sec/android/app/sbrowser/infobars/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

.field public final synthetic b:Landroid/text/style/ClickableSpan;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;Landroid/text/style/ClickableSpan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/h;->a:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/h;->b:Landroid/text/style/ClickableSpan;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/h;->a:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/h;->b:Landroid/text/style/ClickableSpan;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;->b(Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;Landroid/text/style/ClickableSpan;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
