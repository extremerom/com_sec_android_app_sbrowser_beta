.class public Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcutCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup(Landroid/app/Activity;Ljava/util/ArrayList;)Landroid/view/KeyboardShortcutGroup;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;",
            ">;)",
            "Landroid/view/KeyboardShortcutGroup;"
        }
    .end annotation

    new-instance p0, Landroid/view/KeyboardShortcutGroup;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;

    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    iget-object v1, p2, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;->mTitle:Ljava/lang/CharSequence;

    iget v2, p2, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;->mShortcut:I

    iget p2, p2, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;->mModifiers:I

    invoke-direct {v0, v1, v2, p2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {p0, v0}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
