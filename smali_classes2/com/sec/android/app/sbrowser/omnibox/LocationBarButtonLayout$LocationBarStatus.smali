.class public final enum Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationBarStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum DOCUMENT_EDIT_WITHOUT_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum DOCUMENT_EDIT_WITH_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum DOCUMENT_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum DOCUMENT_PAGE_LOADING:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum NATIVE_EDIT_WITHOUT_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum NATIVE_EDIT_WITH_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum NATIVE_NEW_GUI:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum NATIVE_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

.field public static final enum READER_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;
    .locals 9

    sget-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_NEW_GUI:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_EDIT_WITH_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    sget-object v3, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_EDIT_WITHOUT_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    sget-object v4, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    sget-object v5, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_EDIT_WITH_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    sget-object v6, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_EDIT_WITHOUT_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    sget-object v7, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_PAGE_LOADING:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    sget-object v8, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->READER_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    filled-new-array/range {v0 .. v8}, [Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "NATIVE_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "NATIVE_NEW_GUI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_NEW_GUI:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "NATIVE_EDIT_WITH_TEXT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_EDIT_WITH_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "NATIVE_EDIT_WITHOUT_TEXT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->NATIVE_EDIT_WITHOUT_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "DOCUMENT_NORMAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "DOCUMENT_EDIT_WITH_TEXT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_EDIT_WITH_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "DOCUMENT_EDIT_WITHOUT_TEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_EDIT_WITHOUT_TEXT:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "DOCUMENT_PAGE_LOADING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->DOCUMENT_PAGE_LOADING:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    const-string v1, "READER_NORMAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->READER_NORMAL:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->$values()[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout$LocationBarStatus;

    return-object v0
.end method
