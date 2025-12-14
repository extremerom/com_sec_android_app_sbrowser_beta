.class public final synthetic Lcom/sec/android/app/sbrowser/settings/website/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/n;->a:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/n;->a:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;->e(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceSearchView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
