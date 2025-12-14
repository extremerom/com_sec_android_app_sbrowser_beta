.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/b;->a:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/b;->a:Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->a(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
