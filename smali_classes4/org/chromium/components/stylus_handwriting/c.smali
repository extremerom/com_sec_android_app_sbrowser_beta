.class public final synthetic Lorg/chromium/components/stylus_handwriting/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/components/stylus_handwriting/StylusWritingController;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/stylus_handwriting/StylusWritingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/c;->a:Lorg/chromium/components/stylus_handwriting/StylusWritingController;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/c;->a:Lorg/chromium/components/stylus_handwriting/StylusWritingController;

    invoke-static {p0, p1}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->a(Lorg/chromium/components/stylus_handwriting/StylusWritingController;Z)V

    return-void
.end method
