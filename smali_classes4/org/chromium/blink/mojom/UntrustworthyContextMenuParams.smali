.class public final Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public altText:Lorg/chromium/mojo_base/mojom/String16;

.field public customItems:[Lorg/chromium/blink/mojom/CustomContextMenuItem;

.field public dictionarySuggestions:[Lorg/chromium/mojo_base/mojom/String16;

.field public editFlags:I

.field public fieldRendererId:Lorg/chromium/blink/mojom/FieldRendererId;

.field public formControlType:Ljava/lang/Integer;

.field public formRendererId:Lorg/chromium/blink/mojom/FormRendererId;

.field public frameCharset:Ljava/lang/String;

.field public hasImageContents:Z

.field public imageHeight:I

.field public imageWidth:I

.field public impression:Lorg/chromium/blink/mojom/Impression;

.field public isContentEditableForAutofill:Z

.field public isEditable:Z

.field public isImageMediaPluginDocument:Z

.field public linkFollowed:Lorg/chromium/url/mojom/Url;

.field public linkText:Lorg/chromium/mojo_base/mojom/String16;

.field public linkUrl:Lorg/chromium/url/mojom/Url;

.field public mediaFlags:I

.field public mediaType:I

.field public misspelledWord:Lorg/chromium/mojo_base/mojom/String16;

.field public openedFromHighlight:Z

.field public openedFromInterestTarget:Z

.field public referrerPolicy:I

.field public selectionRect:Lorg/chromium/gfx/mojom/Rect;

.field public selectionStartOffset:I

.field public selectionText:Lorg/chromium/mojo_base/mojom/String16;

.field public sourceType:I

.field public spellcheckEnabled:Z

.field public srcUrl:Lorg/chromium/url/mojom/Url;

.field public suggestedFilename:Lorg/chromium/mojo_base/mojom/String16;

.field public titleText:Lorg/chromium/mojo_base/mojom/String16;

.field public unfilteredLinkUrl:Lorg/chromium/url/mojom/Url;

.field public writingDirectionDefault:I

.field public writingDirectionLeftToRight:I

.field public writingDirectionRightToLeft:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xd0

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;-><init>(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->mediaType:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/ContextMenuDataMediaType;->validate(I)V

    iget v3, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->mediaType:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/ContextMenuDataMediaType;->toKnownValue(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->mediaType:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->x:I

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->y:I

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->hasImageContents:Z

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->isImageMediaPluginDocument:Z

    const/4 v6, 0x2

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->spellcheckEnabled:Z

    const/4 v6, 0x3

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->isEditable:Z

    const/4 v6, 0x4

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->openedFromHighlight:Z

    const/4 v6, 0x5

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->openedFromInterestTarget:Z

    const/4 v6, 0x6

    invoke-virtual {p0, v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/16 v6, 0xb8

    invoke-virtual {p0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->formControlType:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->formControlType:Ljava/lang/Integer;

    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->isContentEditableForAutofill:Z

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->linkUrl:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->linkText:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/Impression;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/Impression;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->impression:Lorg/chromium/blink/mojom/Impression;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->unfilteredLinkUrl:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->srcUrl:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->imageWidth:I

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->imageHeight:I

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->mediaFlags:I

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->writingDirectionDefault:I

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->selectionText:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->titleText:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->altText:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->suggestedFilename:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->misspelledWord:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0x78

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/mojo_base/mojom/String16;

    iput-object v6, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->dictionarySuggestions:[Lorg/chromium/mojo_base/mojom/String16;

    move v6, v4

    :goto_1
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_2

    const/16 v7, 0x8

    invoke-static {v6, v7, v1, v0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->dictionarySuggestions:[Lorg/chromium/mojo_base/mojom/String16;

    invoke-static {v7}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->writingDirectionLeftToRight:I

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->writingDirectionRightToLeft:I

    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->editFlags:I

    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->referrerPolicy:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ReferrerPolicy;->validate(I)V

    iget v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->referrerPolicy:I

    invoke-static {v0}, Lorg/chromium/network/mojom/ReferrerPolicy;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->referrerPolicy:I

    const/16 v0, 0x90

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->frameCharset:Ljava/lang/String;

    const/16 v0, 0x98

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->linkFollowed:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    iget v5, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/blink/mojom/CustomContextMenuItem;

    iput-object v5, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->customItems:[Lorg/chromium/blink/mojom/CustomContextMenuItem;

    move v5, v4

    :goto_2
    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_3

    const/16 v6, 0x8

    invoke-static {v5, v6, v1, v0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->customItems:[Lorg/chromium/blink/mojom/CustomContextMenuItem;

    invoke-static {v6}, Lorg/chromium/blink/mojom/CustomContextMenuItem;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/CustomContextMenuItem;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0xa8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->sourceType:I

    invoke-static {v0}, Lorg/chromium/ui/mojom/MenuSourceType;->validate(I)V

    iget v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->sourceType:I

    invoke-static {v0}, Lorg/chromium/ui/mojom/MenuSourceType;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->sourceType:I

    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->selectionStartOffset:I

    const/16 v0, 0xb0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->selectionRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v0, 0xc0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/FieldRendererId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FieldRendererId;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->fieldRendererId:Lorg/chromium/blink/mojom/FieldRendererId;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/FormRendererId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FormRendererId;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->formRendererId:Lorg/chromium/blink/mojom/FormRendererId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 11

    sget-object v0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->mediaType:I

    const/16 v8, 0x8

    invoke-virtual {p1, v0, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->x:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->y:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->hasImageContents:Z

    const/16 v1, 0x14

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->isImageMediaPluginDocument:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->spellcheckEnabled:Z

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->isEditable:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->openedFromHighlight:Z

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->openedFromInterestTarget:Z

    const/4 v3, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->formControlType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    const/4 v4, 0x6

    invoke-virtual {p1, v3, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v3, 0xb8

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->isContentEditableForAutofill:Z

    const/4 v3, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->linkUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->linkText:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->impression:Lorg/chromium/blink/mojom/Impression;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->unfilteredLinkUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->srcUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->imageWidth:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->imageHeight:I

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->mediaFlags:I

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->writingDirectionDefault:I

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->selectionText:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->titleText:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->altText:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->suggestedFilename:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->misspelledWord:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->dictionarySuggestions:[Lorg/chromium/mojo_base/mojom/String16;

    const/4 v10, -0x1

    const/16 v1, 0x78

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_2
    iget-object v1, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->dictionarySuggestions:[Lorg/chromium/mojo_base/mojom/String16;

    array-length v2, v1

    if-ge v6, v2, :cond_3

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v6

    goto :goto_2

    :cond_3
    :goto_3
    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->writingDirectionLeftToRight:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->writingDirectionRightToLeft:I

    const/16 v1, 0x84

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->editFlags:I

    const/16 v1, 0x88

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->referrerPolicy:I

    const/16 v1, 0x8c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->frameCharset:Ljava/lang/String;

    const/16 v1, 0x90

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->linkFollowed:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x98

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->customItems:[Lorg/chromium/blink/mojom/CustomContextMenuItem;

    const/16 v1, 0xa0

    if-nez v0, :cond_4

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_4
    iget-object v2, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->customItems:[Lorg/chromium/blink/mojom/CustomContextMenuItem;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    aget-object v2, v2, v1

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v8

    invoke-virtual {v0, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->sourceType:I

    const/16 v1, 0xa8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->selectionStartOffset:I

    const/16 v1, 0xac

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->selectionRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0xb0

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->fieldRendererId:Lorg/chromium/blink/mojom/FieldRendererId;

    const/16 v1, 0xc0

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/UntrustworthyContextMenuParams;->formRendererId:Lorg/chromium/blink/mojom/FormRendererId;

    const/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
