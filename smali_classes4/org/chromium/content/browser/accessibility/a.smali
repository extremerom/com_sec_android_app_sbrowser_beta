.class public final synthetic Lorg/chromium/content/browser/accessibility/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/a;->a:Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;

    iput p2, p0, Lorg/chromium/content/browser/accessibility/a;->b:I

    iput p3, p0, Lorg/chromium/content/browser/accessibility/a;->c:I

    iput-wide p4, p0, Lorg/chromium/content/browser/accessibility/a;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/a;->a:Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;

    iget v1, p0, Lorg/chromium/content/browser/accessibility/a;->b:I

    iget v2, p0, Lorg/chromium/content/browser/accessibility/a;->c:I

    iget-wide v3, p0, Lorg/chromium/content/browser/accessibility/a;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;->a(Lorg/chromium/content/browser/accessibility/AccessibilityEventDispatcher;IIJ)V

    return-void
.end method
