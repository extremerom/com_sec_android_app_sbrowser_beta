.class public Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field final mColor:I

.field final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;->mColor:I

    iput-object p2, p0, Lorg/chromium/components/embedder_support/delegate/ColorSuggestion;->mLabel:Ljava/lang/String;

    return-void
.end method
