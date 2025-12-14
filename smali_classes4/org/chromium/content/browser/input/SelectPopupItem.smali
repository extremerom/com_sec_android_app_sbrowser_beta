.class public Lorg/chromium/content/browser/input/SelectPopupItem;
.super Lorg/chromium/ui/DropdownItemBase;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/DropdownItemBase;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupItem;->mLabel:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/content/browser/input/SelectPopupItem;->mType:I

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/SelectPopupItem;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/SelectPopupItem;->mType:I

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    iget p0, p0, Lorg/chromium/content/browser/input/SelectPopupItem;->mType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isGroupHeader()Z
    .locals 0

    iget p0, p0, Lorg/chromium/content/browser/input/SelectPopupItem;->mType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
