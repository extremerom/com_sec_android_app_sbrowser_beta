.class public final synthetic Lcom/sec/android/app/sbrowser/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utils/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/utils/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/a;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/utils/a;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil$1;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
