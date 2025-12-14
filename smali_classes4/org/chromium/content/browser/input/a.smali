.class public final synthetic Lorg/chromium/content/browser/input/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/input/OngoingGesture;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/input/OngoingGesture;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/input/a;->a:Lorg/chromium/content/browser/input/OngoingGesture;

    iput p2, p0, Lorg/chromium/content/browser/input/a;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/a;->a:Lorg/chromium/content/browser/input/OngoingGesture;

    iget p0, p0, Lorg/chromium/content/browser/input/a;->b:I

    invoke-static {v0, p0}, Lorg/chromium/content/browser/input/OngoingGesture;->a(Lorg/chromium/content/browser/input/OngoingGesture;I)V

    return-void
.end method
