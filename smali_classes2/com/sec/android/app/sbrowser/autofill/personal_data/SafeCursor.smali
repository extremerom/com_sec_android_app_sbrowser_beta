.class Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method public static wrap(Landroid/database/Cursor;)Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SafeCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    :cond_0
    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
