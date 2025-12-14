.class public Lorg/chromium/content_public/browser/SelectionClient$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content_public/browser/SelectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public additionalIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public end:I

.field public endAdjust:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public intent:Landroid/content/Intent;

.field public label:Ljava/lang/CharSequence;

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public start:I

.field public startAdjust:I

.field public text:Ljava/lang/String;

.field public textClassification:Landroid/view/textclassifier/TextClassification;

.field public textSelection:Landroid/view/textclassifier/TextSelection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNamedAction()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content_public/browser/SelectionClient$Result;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content_public/browser/SelectionClient$Result;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/chromium/content_public/browser/SelectionClient$Result;->intent:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/chromium/content_public/browser/SelectionClient$Result;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
