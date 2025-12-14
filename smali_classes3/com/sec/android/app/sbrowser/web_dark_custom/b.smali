.class public final synthetic Lcom/sec/android/app/sbrowser/web_dark_custom/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils$DarkModeObserver;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/b;->a:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    return-void
.end method


# virtual methods
.method public final onDarkModeChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/b;->a:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->updateCustomCss(I)V

    return-void
.end method
