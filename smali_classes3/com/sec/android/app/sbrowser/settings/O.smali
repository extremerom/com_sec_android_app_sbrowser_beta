.class public final synthetic Lcom/sec/android/app/sbrowser/settings/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:Landroid/app/Application;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/O;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/O;->b:Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/O;->a:Landroid/app/Application;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/O;->b:Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->b(Landroid/app/Application;Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;I)V

    return-void
.end method
