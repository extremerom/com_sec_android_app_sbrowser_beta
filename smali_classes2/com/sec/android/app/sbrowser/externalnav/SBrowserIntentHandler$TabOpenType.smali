.class public final enum Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabOpenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

.field public static final enum BRING_TAB_TO_FRONT:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

.field public static final enum CLOBBER_CURRENT_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

.field public static final enum OPEN_NEW_INCOGNITO_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

.field public static final enum OPEN_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

.field public static final enum REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

.field public static final enum REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;
    .locals 6

    sget-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->OPEN_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    sget-object v1, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    sget-object v2, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    sget-object v3, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->CLOBBER_CURRENT_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    sget-object v4, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    sget-object v5, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->OPEN_NEW_INCOGNITO_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    const-string v1, "OPEN_NEW_TAB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->OPEN_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    const-string v1, "REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->REUSE_URL_MATCHING_TAB_ELSE_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    const-string v1, "REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->REUSE_APP_ID_MATCHING_TAB_ELSE_NEW_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    const-string v1, "CLOBBER_CURRENT_TAB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->CLOBBER_CURRENT_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    const-string v1, "BRING_TAB_TO_FRONT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    const-string v1, "OPEN_NEW_INCOGNITO_TAB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->OPEN_NEW_INCOGNITO_TAB:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->$values()[Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->$VALUES:[Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->$VALUES:[Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    return-object v0
.end method
