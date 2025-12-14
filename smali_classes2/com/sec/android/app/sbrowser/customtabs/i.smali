.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

.field public final synthetic b:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/i;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/i;->b:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/i;->b:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/i;->a:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method
