package com.Nexon.MapleThief;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class PurchaseDatabase
{
  private static final String DATABASE_NAME = "purchase.db";
  private static final int DATABASE_VERSION = 1;
  private static final String[] HISTORY_COLUMNS = { "_id", "productId", "state", "purchaseTime", "developerPayload" };
  static final String HISTORY_DEVELOPER_PAYLOAD_COL = "developerPayload";
  static final String HISTORY_ORDER_ID_COL = "_id";
  static final String HISTORY_PRODUCT_ID_COL = "productId";
  static final String HISTORY_PURCHASE_TIME_COL = "purchaseTime";
  static final String HISTORY_STATE_COL = "state";
  private static final String[] PURCHASED_COLUMNS = { "_id", "quantity" };
  private static final String PURCHASED_ITEMS_TABLE_NAME = "purchased";
  static final String PURCHASED_PRODUCT_ID_COL = "_id";
  static final String PURCHASED_QUANTITY_COL = "quantity";
  private static final String PURCHASE_HISTORY_TABLE_NAME = "history";
  private static final String TAG = "PurchaseDatabase";
  private DatabaseHelper mDatabaseHelper;
  private SQLiteDatabase mDb;
  
  public PurchaseDatabase(Context paramContext)
  {
    this.mDatabaseHelper = new DatabaseHelper(paramContext);
    this.mDb = this.mDatabaseHelper.getWritableDatabase();
  }
  
  private void insertOrder(String paramString1, String paramString2, Consts.PurchaseState paramPurchaseState, long paramLong, String paramString3)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("_id", paramString1);
    localContentValues.put("productId", paramString2);
    localContentValues.put("state", Integer.valueOf(paramPurchaseState.ordinal()));
    localContentValues.put("purchaseTime", Long.valueOf(paramLong));
    localContentValues.put("developerPayload", paramString3);
    this.mDb.replace("history", null, localContentValues);
  }
  
  private void updatePurchasedItem(String paramString, int paramInt)
  {
    if (paramInt == 0)
    {
      this.mDb.delete("purchased", "_id=?", new String[] { paramString });
      return;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("_id", paramString);
    localContentValues.put("quantity", Integer.valueOf(paramInt));
    this.mDb.replace("purchased", null, localContentValues);
  }
  
  public void close()
  {
    this.mDatabaseHelper.close();
  }
  
  public Cursor queryAllPurchasedItems()
  {
    return this.mDb.query("purchased", PURCHASED_COLUMNS, null, null, null, null, null);
  }
  
  /* Error */
  public int updatePurchase(String paramString1, String paramString2, Consts.PurchaseState paramPurchaseState, long paramLong, String paramString3)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: aload_2
    //   5: aload_3
    //   6: lload 4
    //   8: aload 6
    //   10: invokespecial 132	com/Nexon/MapleThief/PurchaseDatabase:insertOrder	(Ljava/lang/String;Ljava/lang/String;Lcom/Nexon/MapleThief/Consts$PurchaseState;JLjava/lang/String;)V
    //   13: aload_0
    //   14: getfield 73	com/Nexon/MapleThief/PurchaseDatabase:mDb	Landroid/database/sqlite/SQLiteDatabase;
    //   17: ldc 42
    //   19: getstatic 55	com/Nexon/MapleThief/PurchaseDatabase:HISTORY_COLUMNS	[Ljava/lang/String;
    //   22: ldc 134
    //   24: iconst_1
    //   25: anewarray 53	java/lang/String
    //   28: dup
    //   29: iconst_0
    //   30: aload_2
    //   31: aastore
    //   32: aconst_null
    //   33: aconst_null
    //   34: aconst_null
    //   35: aconst_null
    //   36: invokevirtual 137	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   39: astore_1
    //   40: aload_1
    //   41: ifnonnull +11 -> 52
    //   44: iconst_0
    //   45: istore 8
    //   47: aload_0
    //   48: monitorexit
    //   49: iload 8
    //   51: ireturn
    //   52: iconst_0
    //   53: istore 7
    //   55: aload_1
    //   56: invokeinterface 143 1 0
    //   61: ifne +36 -> 97
    //   64: aload_0
    //   65: aload_2
    //   66: iload 7
    //   68: invokespecial 145	com/Nexon/MapleThief/PurchaseDatabase:updatePurchasedItem	(Ljava/lang/String;I)V
    //   71: iload 7
    //   73: istore 8
    //   75: aload_1
    //   76: ifnull -29 -> 47
    //   79: aload_1
    //   80: invokeinterface 146 1 0
    //   85: iload 7
    //   87: istore 8
    //   89: goto -42 -> 47
    //   92: astore_1
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_1
    //   96: athrow
    //   97: aload_1
    //   98: iconst_2
    //   99: invokeinterface 150 2 0
    //   104: invokestatic 153	com/Nexon/MapleThief/Consts$PurchaseState:valueOf	(I)Lcom/Nexon/MapleThief/Consts$PurchaseState;
    //   107: astore_3
    //   108: aload_3
    //   109: getstatic 157	com/Nexon/MapleThief/Consts$PurchaseState:PURCHASED	Lcom/Nexon/MapleThief/Consts$PurchaseState;
    //   112: if_acmpeq +14 -> 126
    //   115: getstatic 160	com/Nexon/MapleThief/Consts$PurchaseState:REFUNDED	Lcom/Nexon/MapleThief/Consts$PurchaseState;
    //   118: astore 6
    //   120: aload_3
    //   121: aload 6
    //   123: if_acmpne -68 -> 55
    //   126: iload 7
    //   128: iconst_1
    //   129: iadd
    //   130: istore 7
    //   132: goto -77 -> 55
    //   135: astore_2
    //   136: aload_1
    //   137: ifnull +9 -> 146
    //   140: aload_1
    //   141: invokeinterface 146 1 0
    //   146: aload_2
    //   147: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	this	PurchaseDatabase
    //   0	148	1	paramString1	String
    //   0	148	2	paramString2	String
    //   0	148	3	paramPurchaseState	Consts.PurchaseState
    //   0	148	4	paramLong	long
    //   0	148	6	paramString3	String
    //   53	78	7	i	int
    //   45	43	8	j	int
    // Exception table:
    //   from	to	target	type
    //   2	40	92	finally
    //   79	85	92	finally
    //   140	146	92	finally
    //   146	148	92	finally
    //   55	71	135	finally
    //   97	120	135	finally
  }
  
  private class DatabaseHelper
    extends SQLiteOpenHelper
  {
    public DatabaseHelper(Context paramContext)
    {
      super("purchase.db", null, 1);
    }
    
    private void createPurchaseTable(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE history(_id TEXT PRIMARY KEY, state INTEGER, productId TEXT, developerPayload TEXT, purchaseTime INTEGER)");
      paramSQLiteDatabase.execSQL("CREATE TABLE purchased(_id TEXT PRIMARY KEY, quantity INTEGER)");
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      createPurchaseTable(paramSQLiteDatabase);
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      if (paramInt2 != 1)
      {
        Log.w("PurchaseDatabase", "Database upgrade from old: " + paramInt1 + " to: " + paramInt2);
        paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS history");
        paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS purchased");
        createPurchaseTable(paramSQLiteDatabase);
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.PurchaseDatabase
 * JD-Core Version:    0.7.0.1
 */