.class public final synthetic Lorg/chromium/content/browser/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/ChildProcessConnectionMetrics;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/ChildProcessConnectionMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/d;->a:Lorg/chromium/content/browser/ChildProcessConnectionMetrics;

    return-void
.end method


# virtual methods
.method public final onApplicationStateChange(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/d;->a:Lorg/chromium/content/browser/ChildProcessConnectionMetrics;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/ChildProcessConnectionMetrics;->c(Lorg/chromium/content/browser/ChildProcessConnectionMetrics;I)V

    return-void
.end method
