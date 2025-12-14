.class public final enum Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_ASSIST:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_LONGPRESS_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_LONGPRESS_FOREGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_READER_MODE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_RESTORE_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_RESTORE_FOREGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_SPLIT_VIEW:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field public static final enum FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
    .locals 10

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_FOREGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v6, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v7, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_READER_MODE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v8, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_ASSIST:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    sget-object v9, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_SPLIT_VIEW:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    filled-new-array/range {v0 .. v9}, [Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_UI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_LINK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_EXTERNAL_APP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_RESTORE_FOREGROUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_FOREGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_RESTORE_BACKGROUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_LONGPRESS_FOREGROUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_LONGPRESS_BACKGROUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_READER_MODE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_READER_MODE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_ASSIST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_ASSIST:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const-string v1, "FROM_SPLIT_VIEW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_SPLIT_VIEW:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->$values()[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    return-object v0
.end method


# virtual methods
.method public isLaunchedFromBackground()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isLaunchedFromParent()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_ASSIST:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isLaunchedFromSplitView()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_SPLIT_VIEW:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
